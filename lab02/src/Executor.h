
#ifndef RISCV_SIM_EXECUTOR_H
#define RISCV_SIM_EXECUTOR_H

#include "Instruction.h"

class Executor
{
public:
	//вычисление полей `_data`, `_addr` и `_nextIp`
    void Execute(InstructionPtr& instr, Word ip)
    {
        instr->_data = CalcData(instr, ip);
        instr->_addr = CalcAddr(instr);
        instr->_nextIp = CalcNextIp(instr, ip);
    }

private:
	//АЛУ выполняет арифметическо-логические операции над двумя операндами
   Word CalcAlu(const InstructionPtr& instr)
    {
        Word op1 = instr->_src1Val;//Значение первого операнда берется из `_srcVal1` в случае, если инструкция определяет валидный `_src1`
        Word op2 = instr->_imm.value_or(instr->_src2Val);//Значение второго операнда определяется либо значением `_imm`, если оно определено инструкцией, либо `_srcVal2`
        switch (instr->_aluFunc)
        {
            case AluFunc::Add:
            {
                return op1 + op2;
            }
            case AluFunc::Sub:
            {
                return op1 - op2;
            }
            case AluFunc::And:
            {
                return op1 & op2;
            }
            case AluFunc::Or:
            {
                return op1 | op2;
            }
            case AluFunc::Xor:
            {
                return op1 ^ op2;
            }
            case AluFunc::Slt:
            {
                return static_cast<SignedWord>(op1) <
                       static_cast<SignedWord>(op2);
            }
            case AluFunc::Sltu:
            {
                return op1 < op2;
            }
            case AluFunc::Sll:
            {
                return op1 << (op2 % 32);
            }
            case AluFunc::Srl:
            {
                return op1 >> (op2 % 32);
            }
            case AluFunc::Sra:
            {
                return static_cast<SignedWord>(op1) >> (op2 % 32);
            }
            default:
            {
                return 0xdeadbeaf;
            }
        }
    }
	//Поле `_data` инициализируется результатом вычислений `ALU`, за исключением  некоторых инструкций
    Word CalcData (const InstructionPtr& instr, Word ip)
    {
        switch (instr->_type)
        {
            case IType::Csrr:
            {
                return instr->_csrVal;
            }
            case IType::Csrw:
            {
                return instr->_src1Val;
            }
            case IType::St:
            {
                return instr->_src2Val;
            }
            case IType::J:
            case IType::Jr:
            {
                return ip + 4u;
            }
            case IType::Auipc:
            {
                return ip + instr->_imm.value();
            }
            default:
            {
                return CalcAlu(instr);
            }
        }
    }
	//Результат вычисления АЛУ всегда записывается в поле `_addr` для инструкций типа `Itype::Ld` или `Itype::St`
    Word CalcAddr (const InstructionPtr& instr)
    {
        switch (instr->_type)
        {
            case IType::St:
            {
                return CalcAlu(instr);
            }
            case IType::Ld:
            {
                return instr->_data; 
            }
            default:
            {
                return 0xdeadbeaf;
            }
        }
    }
	//блок вычисления переходов. Он вычисляет условие перехода и адрес следующей инструкции, на которую надо перейти
    Word CalcNextIp (const InstructionPtr& instr, Word ip)
    {
        bool chek = false;
        switch(instr->_brFunc)
        {
            case BrFunc::Eq:
            {
                chek = instr->_src1Val == instr->_src2Val;
                break;
            }
            case BrFunc::Neq:
            {
                chek = instr->_src1Val != instr->_src2Val;
                break;
            }
            case BrFunc::Lt:
            {
                chek = static_cast<SignedWord>(instr->_src1Val) <
                         static_cast<SignedWord>(instr->_src2Val);
                break;
            }
            case BrFunc::Ltu:
            {
                chek = instr->_src1Val < instr->_src2Val;
                break;
            }
            case BrFunc::Ge:
            {
                chek = static_cast<SignedWord>(instr->_src1Val) >=
                         static_cast<SignedWord>(instr->_src2Val);
                break;
            }
            case BrFunc::Geu:
            {
                chek = instr->_src1Val >= instr->_src2Val;
                break;
            }
            case BrFunc::AT:
            {
                chek = true;
                break;
            }
            case BrFunc::NT:
            {
                chek = false;
                break;
            }
        }

        if (chek)//Если условие перехода истинно, то полученный адрес записывается в `_nextIp`
        {
            if(instr->_type == IType::Br || instr->_type == IType::J) return ip + instr->_imm.value();//Для `IType::Br` и `IType::J` — следующий адрес вычисляется как текущий плюс смещение, записанное в `_imm`
        	else if(instr->_type == IType::Jr) return instr->_src1Val + instr->_imm.value();//Для  `IType::Jr` — смещение из `_imm` добавляется к значению `_srcVal1`
        }
        else return ip + 4u;//иначе в `_nextIp` записывается адрес текущей инструкции, увеличенный на 4
     }
        
        
};

#endif // RISCV_SIM_EXECUTOR_H

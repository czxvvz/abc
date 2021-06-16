
#ifndef RISCV_SIM_CPU_H
#define RISCV_SIM_CPU_H

#include "Memory.h"
#include "Decoder.h"
#include "RegisterFile.h"
#include "CsrFile.h"
#include "Executor.h"

class Cpu
{
public:
    Cpu(Memory& mem)
        : _mem(mem)
    {

    }
    //Эта функция выполняет один цикл тракта данных виртуальной машины, исполняющей `RISC-V` код
    void ProcessInstruction()
    {
       Word rawInstr = _mem.Request(_ip);//получение слова инструкции типа `Word` из модуля памяти `Memory` по указателю инструкции `_ip`
        InstructionPtr instr = _decoder.Decode(rawInstr);//декодирование инструкции в структуру типа `Instruction`
        _rf.Read(instr);//чтение требуемых инструкцией регистров из регистрового файла `RegisterFile`
        _csrf.Read(instr);//чтение требуемых инструкцией регистров из регистрового файла `CsrFile`
        _exe.Execute(instr, _ip);//исполнение инструкции в модуле `Executor`
        _mem.Request(instr);//обращение в память
        _rf.Write(instr);//запись результата в регистровый файл `RegisterFile` 
        _csrf.Write(instr);//запись результата в регистровый файл `CsrFile`
        _csrf.InstructionExecuted();//обновление регистров в `CsrFile` 
        _ip = instr->_nextIp;//вычисление нового `_ip` для следующего цикла тракта данных
    }

    void Reset(Word ip)
    {
        _csrf.Reset();
        _ip = ip;
    }

    std::optional<CpuToHostData> GetMessage()
    {
        return _csrf.GetMessage();
    }

private:
    Reg32 _ip;
    Decoder _decoder;
    RegisterFile _rf;
    CsrFile _csrf;
    Executor _exe;
    Memory& _mem;
};


#endif //RISCV_SIM_CPU_H

#include "ll_cycle.h"

bool ll_has_cycle(node *head) {
    node *hare = head;
    node *turtle = head;
    if (hare == nullptr) return false;
    while(true)
    {
    if (hare->next == nullptr || hare->next->next == nullptr) return false;
    hare = hare->next->next;
    turtle = turtle->next;
    if(turtle->next == hare->next) return true;
    }
}

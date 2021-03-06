include(`commons.m4')get_month1:
; _EN(`load address of table into')_RU(`загрузить адрес таблицы в') $v0:
                la      $v0, month1
; _EN(`take input value and multiply it by')_RU(`взять входное значение и умножить его на') 4:
                sll     $a0, 2
; _EN(`sum up address of table and multiplied value')_RU(`сложить адрес таблицы и умноженное значение'):
                addu    $a0, $v0
; _EN(`load table element at this address into')_RU(`загрузить элемент таблицы по этому адресу в') $v0:
                lw      $v0, 0($a0)
; _return
                jr      $ra
                or      $at, $zero ; branch delay slot, NOP

                .data # .data.rel.local
                .globl month1
month1:         .word aJanuary           # "January"
                .word aFebruary          # "February"
                .word aMarch             # "March"
                .word aApril             # "April"
                .word aMay               # "May"
                .word aJune              # "June"
                .word aJuly              # "July"
                .word aAugust            # "August"
                .word aSeptember         # "September"
                .word aOctober           # "October"
                .word aNovember          # "November"
                .word aDecember          # "December"

                .data # .rodata.str1.4
aJanuary:       .ascii "January"<0>      
aFebruary:      .ascii "February"<0>     
aMarch:         .ascii "March"<0>        
aApril:         .ascii "April"<0>        
aMay:           .ascii "May"<0>          
aJune:          .ascii "June"<0>         
aJuly:          .ascii "July"<0>         
aAugust:        .ascii "August"<0>       
aSeptember:     .ascii "September"<0>    
aOctober:       .ascii "October"<0>      
aNovember:      .ascii "November"<0>     
aDecember:      .ascii "December"<0>     

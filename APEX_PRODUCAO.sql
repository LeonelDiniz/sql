select distinct(e1_num), e1_cliente, e1_emissao, e1_valor, e1_baixa, c5_nota 
from se1010 e1
join sc5010 c5
on e1.e1_cliente = c5.c5_cliENT
where c5_nota in ('000006328','000006331','000006329','000006332','000006322','000006325','000006323','000006326','000006327',
'000006330','000006316','000006320','000006309','000006312','000006314','000006324','000006313','000006317','000006318','000006321','000006315','000006319')
and e1_tipo  = 'BOL'
and e1_emissao >= '20211001'
and e1.d_e_l_e_t_ = ' '
and c5.d_e_l_e_t_ = ' '
order by e1_num,c5_nota

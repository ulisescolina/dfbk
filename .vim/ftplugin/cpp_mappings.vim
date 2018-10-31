" Lang: C++
" Tabulaciones
set autoindent
set cindent
setlocal shiftwidth=2
setlocal tabstop=2
" ____        _                  _
"/ ___| _ __ (_)_ __  _ __   ___| |_ ___
"\___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
" ___) | | | | | |_) | |_) |  __/ |_\__ \
"|____/|_| |_|_| .__/| .__/ \___|\__|___/
"              |_|   |_|
"
inoremap ,op #include<omp.h><Enter>#include <stdio.h><Enter>#include <stdio.h><Enter>#include <iostream><Enter><Enter>int main(){<Enter>int nhilos, hilo;<Enter><Enter>#pragma omp parallel private(nhilos, hilo){<Enter>hilo = omp_get_thread_num();<Enter>nhilos = omp_get_num_threads();<Enter><Enter><++><Enter><Enter>}<Enter>}
inoremap ,ops omp_set_num_threads(<++>);
inoremap ,opg omp_get_thread_num();
inoremap ,oph omp_get_num_thread();

inoremap ,oi /*<Enter><Tab>NUM_PROC=4<Enter>*/<Enter>#include <iostream><Enter>#include <mpi.h><Enter><Enter>using namespace std;<Enter>int main(int argc, char *argv[])<Enter>{<Enter>int tamanio, id;<Enter>MPI_Status estado;<Enter><Enter>MPI_Init(&argc, &argv);<Enter>MPI_Comm_size(MPI_COMM_WORLD, &tamanio);<Enter>MPI_Comm_rank(MPI_COMM_WORLD, &id);<Enter><Enter><++><Enter><Enter>MPI_Finalize();<Enter>return 0;<Enter>}
inoremap ,oir MPI_Recv(<Enter>&<++>,/*Mensaje a recibir*/<Enter><++>,/*Cantidad de elementos*/<Enter><++>,/*Tipo de dato a recibir*/<Enter><++>,/*id del proceso origen*/<Enter><++>,/*Etiqueta esperada para msj*/<Enter>MPI_COMM_WORLD,/*Comunicador utilizado*/<Enter>&estado /*Info del estado*/);
inoremap ,ois MPI_Send(<Enter>&<++>,/*Mensaje a enviar*/<Enter><++>,/*Cantidad de elementos*/<Enter><++>,/*Tipo de dato del mensaje*/<Enter><++>,/*Proceso receptor del mensaje*/<Enter><++>,/*Etiqueta del mensaje*/<Enter>MPI_COMM_WORLD/*Comunicador*/);
" Gather
inoremap ,oig MPI_Gather(<Enter>&<++>,/*Buffer que se le envia al root para que junte*/<Enter><++>,/*cantidad elementos a enviar al root para que este los junte*/<Enter><++>,/*Tipo de datos a enviar al root para que lo junte*/<Enter>&<++>,/*Buffer de recepcion en el root*/<Enter><++>,/*Nro elementos que se espera recibir el root de cada proceso*/<Enter><++>,/*Tipo de dato a recibir en el buffer*/<Enter><++>,/*Proceso encargado de juntar (root)*/<Enter>MPI_COMM_WORLD/*Comunicador*/);
" Scatter
inoremap ,oic MPI_Scatter(<Enter>&<++>,/*Buffer que se va a dispersar (Lo utiliza el root)*/<Enter><++>,/*cantidad elementos a enviar a cada proceso (Lo utiliza el root)*/<Enter><++>,/*Tipo de datos a dispersar (Lo utiliza el root)*/<Enter>&<++>,/*Buffer de recepcion de lo dispersado por el root*/<Enter><++>,/*Nro elementos que se espera recibir en cada proceso*/<Enter><++>,/*Tipo de dato a recibir en el buffer*/<Enter><++>,/*Proceso que hace la dispersion (Lo utiliza el root)*/<Enter>MPI_COMM_WORLD/*Comunicador*/);
" Reduce
inoremap ,oie MPI_Reduce(<Enter>&<++>,/*Buffer local que se quiere reducir*/<Enter>&<++>,/*Buffer en el que se guarda la operacion de reduccion*/<Enter><++>,/*Numero de elementos*/<Enter><++>,/*Tipo de datos*/<Enter><++>,/*Operacion de reduccion MPI_[MAX\|MIN\|SUM\|PROD\|LAND(y logica)\|LOR(o logica)\|LXOR(o exclusiva)]*/<Enter><++>,/*Proceso que realiza la reduccion*/<Enter>MPI_COMM_WORLD/*Comunicador*/);
" Bcast
inoremap ,oib MPI_Bcast(<Enter>&<++>,/*Buffer que se va a retransmitir*/<Enter><++>,/*Cantidad de datos a retransminir*/<Enter><++>,/*Tipo de datos*/<Enter><++>,/*Proceso que retransmite*/<Enter>MPI_COMM_WORLD/*Comunicador*/);

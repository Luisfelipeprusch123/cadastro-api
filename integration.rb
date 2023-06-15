require 'pg'

    module Database 
        def sel.conenct
            conn PG.conenct(
                user: 'your_username',
                password: 'ypur_password',
                host: 'your_password',
                port: 5432

            )

            # Resto do codigo de integração....
        end 
    end

    # Chamando o metodo de conexão 
    Database.conenct
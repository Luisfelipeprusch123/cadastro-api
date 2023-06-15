describe 'agrupando os metodos de verbo GET' do 

    it 'Teste inicial - listando os users' do 
            @user = User.get('/api/user?page=2')
             puts @user 
    end
end

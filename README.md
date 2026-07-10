# Painel Fiscal Emtel — GitHub Pages + banco compartilhado

Este pacote mantém as 753 notas incorporadas no HTML e troca a persistência exclusiva do navegador por um banco Supabase compartilhado. Assim, status de conferência, observações, históricos e anexos ficam disponíveis para todos os usuários que acessarem o mesmo link.

## Configuração

1. Crie um projeto gratuito no Supabase.
2. Abra **SQL Editor**, cole o conteúdo de `supabase_setup.sql` e execute.
3. No Supabase, abra **Settings > API** e copie a **Project URL** e a chave **anon/public**.
4. Abra `config.js` e substitua os dois valores de exemplo. Não use a chave `service_role`.
5. Envie `index.html` e `config.js` para a raiz do repositório do GitHub.
6. Em **Settings > Pages**, selecione **Deploy from a branch**, branch `main` e pasta `/root`.

## Comportamento

- Indicador verde: banco compartilhado conectado.
- Indicador vermelho: dados salvos apenas no navegador atual.
- As notas originais já estão dentro de `index.html` e aparecem para todos mesmo antes da configuração.
- Novas conferências e anexos só serão compartilhados após preencher `config.js`.

## Segurança

A configuração deste MVP permite leitura e edição pública para qualquer pessoa com acesso ao link. Para dados fiscais sensíveis, use repositório privado quando possível e implemente autenticação antes de liberar o endereço externamente.

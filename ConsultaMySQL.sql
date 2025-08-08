select nome, ano from filmes;

select nome, ano from filmes
order by upper(ano);

select nome, ano, duracao from filmes where nome = "De Volta para o Futuro";

select nome, ano, duracao from filmes where ano = 1997;

select nome, ano, duracao from filmes where ano > 2000;

select nome, ano, duracao from filmes where duracao > 100 and duracao < 150
order by upper(duracao);

select ano, count(ano) quantidade from filmes 
group by ano
order by sum(duracao) desc;

select Id, PrimeiroNome, UltimoNome, Genero from atores 
where Genero = "M";

select Id, PrimeiroNome, UltimoNome, Genero from atores 
where Genero = "F"
order by upper(PrimeiroNome);

select f.Nome, g.Genero from filmesgenero join filmes as f on f.Id = filmesgenero.IdFilme
join generos as g on g.Id = filmesgenero.IdGenero;

select f.Nome, g.Genero from filmesgenero join filmes as f on f.Id = filmesgenero.IdFilme
join generos as g on g.Id = filmesgenero.IdGenero
where g.Genero = "Mistério";

select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from elencofilme as ef join filmes as f on f.Id = ef.IdFilme
join atores as a on a.Id = ef.IdAtor;








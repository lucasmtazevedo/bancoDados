SELECT nomeVinho,anoVinho,nomeVinicola,nomeRegiao
FROM
    vinhosloja.vinhos v
INNER JOIN
    vinhosloja.vinicola vi ON v.codVinicola = vi.codVinicola
INNER JOIN
    vinhosloja.regiao r ON vi.codRegiao = r.codRegiao;

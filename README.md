# terraform-github-labels
Atualiza as [labels](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels) das issues nos repositórios.  

A execução deste terraform é lenta pois envolve passar por **todos** repositórios da organização para **cada** label atualizada.  

Se você tem 10 repositórios e você atualizou 7 labels, o terraform terá que fazer 70 atualizações na organização.  

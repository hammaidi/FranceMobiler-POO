<?php include_once('v_entete.php');?>
<div id="bloc-page">
	<?php include_once('v_menu.php');?>
	<div id="bloc-contenu">
		<?php
			if (is_null($this->data['laCategorie']))
			{
				echo '<h2>Tous les produits</h2>';
			}
			else
			{
				echo '<h2>Catégorie '.$this->data['laCategorie']->GetLibelle().'</h2>';
			}
			echo '<table class="tableau">';
			echo '<tr><th>Réf.</th><th>Photo</th><th>Désignation</th><th>Prix TTC</th></tr>';
			foreach ($this->data['lesProduits'] as $unProduit)
			{
					echo '<tr>';
					echo '<td>'.$unProduit->GetReference().'</td>';
					echo '<td><img src="photos/'.$unProduit->GetPhoto().'" alt="'.$unProduit->GetDesignation().'"/></td>';
					echo '<td>'.$unProduit->GetDesignation().'</td>';
					echo '<td>'.$unProduit->GetPrixTTC().'€</td>';
					echo '</tr>';
			}
			echo '</table>';
		?>
	</div>
</div>
<?php include_once('v_piedPage.php');?>

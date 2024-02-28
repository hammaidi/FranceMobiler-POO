<div id="bloc-menu">
	<a href="index.php?page=accueil">Accueil</a><br/>
	<hr>
	<form action="index.php" method="get">
		<select name="categ" size="1">
			<option selected value="0">Toutes les catégories</option>
			<?php
				foreach ($this->data['lesCategories'] as $uneCategorie)
				{
					echo '<option value="'.$uneCategorie->GetId().'">'.$uneCategorie->GetLibelle().'</option>';
				}
			?>
		</select>
		<input type="hidden" name="page" value="listePdt" />
		<input type="submit" value="consulter" />
	</form>
</div>
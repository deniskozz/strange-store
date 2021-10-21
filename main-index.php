<main>

    

        <div class="hero">
            <div class="text-hero">
                <h1>Магазин товаров<br>не прошедших<br>оценку общества</h1>
                <small>Продаем реально "странные" вещи</small>
            </div>
        </div>
        <div class="catalog">
            <div class="container">
                <div class="new-block">
                    <div class="title-box">
                        <h2 class="title-box-name">Новинки</h2>
                        <a class="title-link-view-more" href="#">Смотреть ещё</a>
                    </div>
                    <div class="items">

                        <?php 
                            $cards = get_info_new_items();
                            foreach ($cards as $card): ?>

                        <div class="item">
                            <a href="#">
                                <div class="item-block">
                                    <img src="<?php echo $card["Image"]; ?>">
                                    <p class="item-name"><?php echo $card["Name"]; ?></p>
                                    <p class="item-price"><?php echo $card["Price"]; ?></p>
                                </div>
                            </a>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
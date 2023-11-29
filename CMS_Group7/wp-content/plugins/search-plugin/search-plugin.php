<?php
/*
Plugin Name: Custom Search
Description: Tạo trang tìm kiếm tùy chỉnh.
Version: 1.0
Author: Tên của bạn
*/

// Thêm một shortcode để hiển thị form tìm kiếm
function custom_search_form() {
    ob_start(); ?>
    <form role="search" method="get" id="searchform" action="<?php echo esc_url(home_url('/')); ?>">
        <input type="text" value="" name="s" id="s" placeholder="Tìm kiếm">
        <input type="submit" id="searchsubmit" value="Tìm kiếm">
    </form>
    <?php
    return ob_get_clean();
}
add_shortcode('custom_search', 'custom_search_form');

// Tùy chỉnh truy vấn tìm kiếm
function custom_search_filter($query) {
    if ($query->is_search) {
        // Thực hiện tùy chỉnh tại đây (ví dụ: sử dụng WP_Query để thay đổi truy vấn)
        // Ví dụ: giới hạn tìm kiếm cho bài viết loại 'post' và 'page'.
        $query->set('post_type', array('post', 'page'));
    }
    return $query;
}
add_filter('pre_get_posts', 'custom_search_filter');
?>

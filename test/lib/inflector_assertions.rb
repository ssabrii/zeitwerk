 module InflectorAssertions
  def test_capitalizes_the_first_letter
    assert_equal "User", camelize("user")
  end

  def test_camelizes_snake_case_basenames
    assert_equal "UsersController", camelize("users_controller")
  end

  def test_supports_segments_that_do_not_capitalize
    assert_equal "Point3dValue", camelize("point_3d_value")
  end

  def test_knows_nothing_about_acronyms
    assert_equal "HtmlParser", camelize("html_parser")
  end
end

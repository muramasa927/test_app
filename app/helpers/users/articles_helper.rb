module Users::ArticlesHelper

	def btn_text
    if action_name == "new"
      "新規作成"
    elsif action_name == "edit"
      "更新する"
    end
  end
end

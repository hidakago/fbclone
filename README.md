## README

#### アプリ名
  fbclone

  facebookの機能を模したサイト"fakecook"。

#### 画面・機能構成

1. トップ画面
・画面上部にログイン用のエリア、画面中部にユーザ情報の新規登録用のエリアがある。
1-1. ログイン機能
　 　ログインに成功するとユーザ画面へ遷移する。失敗するとそのままメッセージ表示。
1-2. ユーザ情報新規登録機能
  　　ユーザ情報の新規登録に成功するとユーザ画面へ遷移する。失敗するとそのままメッセージ表示。

2. ユーザ画面
2-1. 画面のヘッダにユーザ名の表示エリアと"ログアウト"のリンクを設置。
　 　"ログアウト"をクリックすると、ログイン情報を削除してトップ画面へ戻る。
2-2. ログインしたユーザの投稿を一覧表示している。
　 　画面中部に"新規投稿"ボタンを設置。
　 　"新規投稿"ボタンを押下した場合は、新規投稿画面へ遷移する。
2-3. 画面下部にユーザの投稿を一覧表示している。
　 　各投稿ごとにコメント表示欄、画像表示欄、"詳細"ボタンを持っている。
　 　"詳細"ボタンを押下した場合は対象の投稿の詳細画面に画面遷移する。

3. 新規投稿画面
・コメントの入力エリア、画像の選択入力エリア、"戻る"ボタン、"投稿確認"ボタンを設置。
3-1. "戻る"ボタンを押下すると、ユーザ画面へ遷移する。
3-2. "投稿確認"ボタンを押下すると、バリデーションチェック実行。
　 　エラーだった場合はそのままメッセージ表示。
　 　そうでない場合は新規投稿確認画面へ遷移する。

4. 新規投稿確認画面
・新規投稿画面で入力した内容を確認する画面。
　"戻る"ボタンと、"投稿する"ボタンを設置。
4-1. "戻る"ボタンを押下すると、新規投稿画面へ遷移する。
4-2. "投稿完了"ボタンを押下すると、入力情報を登録して、ユーザ画面へ遷移する。

5. 詳細画面
・投稿済みの内容の詳細を表示する画面。
　"戻る"ボタンと、"編集"ボタンと、"削除"ボタンを設置。
5-1. "戻る"ボタンを押下すると、ユーザ画面へ遷移する。
5-2. "編集"ボタンを押下すると、編集画面へ遷移する。
5-3. "削除"ボタンを押下すると、表示している投稿のデータを削除する。削除後はユーザ画面へ遷移する。

6. 編集画面
・投稿済みの内容を編集できる画面。
　コメントの入力エリア、画像の選択入力エリア、"戻る"ボタン、"編集確認"ボタンを設置。
6-1. "戻る"ボタンを押下すると、詳細画面へ遷移する。
6-2. "編集確認"ボタンを押下すると、バリデーションチェック実行。エラーだった場合はそのままメッセージ表示。そうでない場合は編集確認画面へ遷移する。

7. 編集確認画面
・編集画面で入力した内容を確認する画面。
　"戻る"ボタンと、"編集完了"ボタンを設置。
7-1. "戻る"ボタンを押下すると、編集画面へ遷移する。
7-2. "編集完了"ボタンを押下すると、入力情報を登録して、ユーザ画面へ遷移する。

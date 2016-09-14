.class public final Lcom/nut/blehunter/t;
.super Ljava/lang/Object;
.source "MyImageLoader.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/nut/blehunter/entity/Nut;Lcom/squareup/picasso/Target;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p1, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V
    .locals 3

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->e()Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 60
    :goto_1
    if-nez v0, :cond_4

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1345
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 69
    :cond_5
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nut/blehunter/entity/Nut;->d()I

    move-result v1

    const/16 v2, 0x7d

    invoke-static {p0, v0, v1, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f02024b

    const/16 v1, 0x50

    invoke-static {p0, p1, v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 52
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 35
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p3

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;F)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

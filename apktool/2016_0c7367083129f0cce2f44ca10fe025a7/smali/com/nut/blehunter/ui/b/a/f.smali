.class public final Lcom/nut/blehunter/ui/b/a/f;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "CircleImageDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/nut/blehunter/ui/b/a/f;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/f;-><init>()V

    .line 35
    invoke-virtual {v0, p2}, Lcom/nut/blehunter/ui/b/a/f;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "drawable_id"

    const v3, 0x7f02024c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/f;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/nut/blehunter/ui/b/a/f;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/f;-><init>()V

    .line 21
    invoke-virtual {v0, p3}, Lcom/nut/blehunter/ui/b/a/f;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v2, "pic_url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/f;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "drawable_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 48
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pic_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    const v0, 0x7f0d017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 53
    const v1, 0x7f0d017c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0d017d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    if-lez v3, :cond_1

    .line 65
    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setBorderColor(I)V

    .line 70
    :goto_1
    return-void

    .line 59
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0, v4}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1
.end method

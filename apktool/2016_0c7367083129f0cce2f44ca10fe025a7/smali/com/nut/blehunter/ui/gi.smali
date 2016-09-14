.class final Lcom/nut/blehunter/ui/gi;
.super Lcom/nut/blehunter/rxApi/j;
.source "ShareManageActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ShareManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ShareManageActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 118
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    const-string v1, "shareRecords"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-static {v0}, Lcom/nut/blehunter/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/ui/gl;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 6229
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6230
    iget-object v3, v2, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7102
    iget-object v0, v2, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->b(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    .line 126
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/ShareManageActivity;->b(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/gi;->a:Lcom/nut/blehunter/ui/ShareManageActivity;

    const v1, 0x7f0d0147

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/ShareManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

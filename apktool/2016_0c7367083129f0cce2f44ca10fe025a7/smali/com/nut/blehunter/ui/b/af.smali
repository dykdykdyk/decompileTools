.class final Lcom/nut/blehunter/ui/b/af;
.super Ljava/lang/Object;
.source "NutListFragment.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/q;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/ac;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 174
    if-gez p2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0, p2}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;I)I

    .line 178
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->d(Lcom/nut/blehunter/ui/b/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 179
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;Ljava/lang/String;)V

    .line 180
    iget v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 181
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v2, "nut"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/ac;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v2, v2, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/ac;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v1, v0, v2}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/ac;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, v0, Lcom/nut/blehunter/entity/t;->a:I

    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/af;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v1, v2, v0, v3}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;ILcom/nut/blehunter/entity/i;Lcom/nut/blehunter/ui/b/a/d;)V

    goto :goto_0
.end method

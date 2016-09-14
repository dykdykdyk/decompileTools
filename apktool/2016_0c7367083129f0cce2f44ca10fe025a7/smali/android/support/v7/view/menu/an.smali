.class public final Landroid/support/v7/view/menu/an;
.super Landroid/support/v7/view/menu/o;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public l:Landroid/support/v7/view/menu/o;

.field private m:Landroid/support/v7/view/menu/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/support/v7/view/menu/s;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    .line 41
    iput-object p3, p0, Landroid/support/v7/view/menu/an;->m:Landroid/support/v7/view/menu/s;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->m:Landroid/support/v7/view/menu/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/an;->m:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->getItemId()I

    move-result v0

    .line 131
    :goto_0
    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_1
    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/view/menu/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/view/menu/p;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p;)V

    .line 75
    return-void
.end method

.method final a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    .line 85
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->b()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->c()Z

    move-result v0

    return v0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->m:Landroid/support/v7/view/menu/s;

    return-object v0
.end method

.method public final k()Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->k()Landroid/support/v7/view/menu/o;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 103
    .line 2263
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/o;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 103
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    .line 2251
    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/o;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 99
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 111
    .line 3239
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/o;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 111
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 107
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    .line 3227
    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/o;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 107
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    .line 3275
    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/o;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 115
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->m:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/s;->setIcon(I)Landroid/view/MenuItem;

    .line 95
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->m:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/s;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 90
    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->setQwertyMode(Z)V

    .line 47
    return-void
.end method

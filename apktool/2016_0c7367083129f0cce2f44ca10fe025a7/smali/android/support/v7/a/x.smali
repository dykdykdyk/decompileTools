.class Landroid/support/v7/a/x;
.super Landroid/support/v7/view/n;
.source "AppCompatDelegateImplBase.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/v;


# direct methods
.method constructor <init>(Landroid/support/v7/a/v;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Landroid/support/v7/a/x;->a:Landroid/support/v7/a/v;

    .line 306
    invoke-direct {p0, p2}, Landroid/support/v7/view/n;-><init>(Landroid/view/Window$Callback;)V

    .line 307
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/a/x;->a:Landroid/support/v7/a/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/v;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-super {p0, p1}, Landroid/support/v7/view/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/support/v7/view/n;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/x;->a:Landroid/support/v7/a/v;

    .line 318
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/a/v;->a(ILandroid/view/KeyEvent;)Z

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

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 323
    if-nez p1, :cond_0

    instance-of v0, p2, Landroid/support/v7/view/menu/o;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/n;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/n;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 367
    iget-object v0, p0, Landroid/support/v7/a/x;->a:Landroid/support/v7/a/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/v;->e(I)Z

    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/n;->onPanelClosed(ILandroid/view/Menu;)V

    .line 374
    iget-object v0, p0, Landroid/support/v7/a/x;->a:Landroid/support/v7/a/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/v;->d(I)V

    .line 375
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 339
    instance-of v0, p3, Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/support/v7/view/menu/o;

    move-object v2, v0

    .line 341
    :goto_0
    if-nez p1, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    .line 361
    :cond_0
    :goto_1
    return v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    .line 351
    :cond_2
    if-eqz v2, :cond_3

    .line 2372
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/support/v7/view/menu/o;->k:Z

    .line 355
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/n;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 357
    if-eqz v2, :cond_0

    .line 3372
    iput-boolean v1, v2, Landroid/support/v7/view/menu/o;->k:Z

    goto :goto_1
.end method

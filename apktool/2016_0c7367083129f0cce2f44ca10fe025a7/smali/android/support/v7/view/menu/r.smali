.class final Landroid/support/v7/view/menu/r;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/view/menu/af;


# instance fields
.field a:Landroid/support/v7/view/menu/o;

.field b:Landroid/support/v7/a/q;

.field c:Landroid/support/v7/view/menu/l;

.field private d:Landroid/support/v7/view/menu/af;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/o;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 1

    .prologue
    .line 149
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    if-ne p1, v0, :cond_1

    .line 1137
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    invoke-virtual {v0}, Landroid/support/v7/a/q;->dismiss()V

    .line 152
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/af;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;Z)V

    .line 155
    :cond_2
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;)Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/af;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    iget-object v0, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/l;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    .line 1947
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/o;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/ae;I)Z

    .line 167
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/l;

    iget-object v1, p0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/l;->a(Landroid/support/v7/view/menu/o;Z)V

    .line 145
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    invoke-virtual {v1}, Landroid/support/v7/a/q;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 123
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    invoke-virtual {v1}, Landroid/support/v7/a/q;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/menu/o;->a(Z)V

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/view/menu/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

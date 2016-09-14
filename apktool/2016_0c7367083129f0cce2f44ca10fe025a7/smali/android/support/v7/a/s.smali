.class public Landroid/support/v7/a/s;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/a/t;


# instance fields
.field private a:Landroid/support/v7/a/u;

.field private b:I

.field private c:Z

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/a/s;->b:I

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/support/v7/a/s;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_1

    .line 1449
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 2349
    invoke-virtual {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 401
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 404
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    const/4 v0, 0x1

    .line 417
    :goto_1
    return v0

    .line 408
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/a/s;->finish()V

    goto :goto_0

    .line 2465
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/u;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/a/s;->a:Landroid/support/v7/a/u;

    if-nez v0, :cond_0

    .line 521
    invoke-static {p0, p0}, Landroid/support/v7/a/u;->a(Landroid/app/Activity;Landroid/support/v7/a/t;)Landroid/support/v7/a/u;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/s;->a:Landroid/support/v7/a/u;

    .line 523
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/s;->a:Landroid/support/v7/a/u;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/u;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 528
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0x7001

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 531
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 532
    if-nez v1, :cond_0

    .line 3110
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/a/u;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/a/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/a/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iput-boolean v0, p0, Landroid/support/v7/a/s;->c:Z

    .line 543
    :goto_0
    return v0

    .line 538
    :cond_0
    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/a/s;->c:Z

    if-eqz v1, :cond_1

    .line 539
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/a/s;->c:Z

    goto :goto_0

    .line 543
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Landroid/support/v7/a/s;->d:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/gl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Landroid/support/v7/widget/gl;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/gl;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/a/s;->d:Landroid/content/res/Resources;

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/s;->d:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/s;->d:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 432
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->g()V

    .line 247
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->a(Landroid/content/res/Configuration;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/a/s;->d:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    iget-object v1, p0, Landroid/support/v7/a/s;->d:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/a/u;->i()V

    .line 73
    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->a(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0}, Landroid/support/v7/a/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/a/s;->b:I

    if-eqz v0, :cond_0

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/support/v7/a/s;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/a/s;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/a/s;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void

    .line 82
    :cond_1
    iget v0, p0, Landroid/support/v7/a/s;->b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/a/s;->setTheme(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 210
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->h()V

    .line 211
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 1110
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 200
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/support/v7/a/a;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Landroid/support/v7/a/s;->b()Z

    move-result v0

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 495
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 506
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 507
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->c()V

    .line 99
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 173
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->f()V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 511
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 512
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->b(Landroid/os/Bundle;)V

    .line 513
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 179
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->d()V

    .line 180
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->e()V

    .line 186
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->a(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->b(I)V

    .line 141
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/u;->a(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/u;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 92
    iput p1, p0, Landroid/support/v7/a/s;->b:I

    .line 93
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->g()V

    .line 240
    return-void
.end method

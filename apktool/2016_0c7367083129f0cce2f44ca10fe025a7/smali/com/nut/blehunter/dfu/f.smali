.class final Lcom/nut/blehunter/dfu/f;
.super Lcom/nut/blehunter/dfu/g;
.source "DfuHelper.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/e;


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Lcom/nut/blehunter/entity/i;

.field private c:Lcom/nut/blehunter/ui/b/a/h;

.field private d:Lcom/nut/blehunter/ui/b/a/d;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/nut/blehunter/entity/i;ILcom/nut/blehunter/ui/b/a/d;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/g;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/nut/blehunter/dfu/f;->a:Landroid/support/v4/app/FragmentActivity;

    .line 81
    iput-object p2, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    .line 82
    iput p3, p0, Lcom/nut/blehunter/dfu/f;->e:I

    .line 83
    new-instance v0, Lcom/nut/blehunter/ui/b/a/h;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/dfu/f;->c:Lcom/nut/blehunter/ui/b/a/h;

    .line 84
    iput-object p4, p0, Lcom/nut/blehunter/dfu/f;->d:Lcom/nut/blehunter/ui/b/a/d;

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->c:Lcom/nut/blehunter/ui/b/a/h;

    .line 1025
    iput-object p0, v0, Lcom/nut/blehunter/ui/b/a/h;->b:Lcom/nut/blehunter/ui/b/a/e;

    .line 86
    return-void
.end method


# virtual methods
.method public final c_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/f;->cancel(Z)Z

    .line 137
    iput-object v1, p0, Lcom/nut/blehunter/dfu/f;->d:Lcom/nut/blehunter/ui/b/a/d;

    .line 138
    iput-object v1, p0, Lcom/nut/blehunter/dfu/f;->a:Landroid/support/v4/app/FragmentActivity;

    .line 139
    iput-object v1, p0, Lcom/nut/blehunter/dfu/f;->c:Lcom/nut/blehunter/ui/b/a/h;

    .line 140
    return-void
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 66
    check-cast p1, Ljava/lang/String;

    .line 1127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1129
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    const-string v1, ""

    iput-object v1, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    .line 1130
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/dfu/f;->e:I

    iget-object v2, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/m;->a(ILcom/nut/blehunter/entity/i;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    check-cast p1, Ljava/lang/String;

    .line 3111
    invoke-super {p0, p1}, Lcom/nut/blehunter/dfu/g;->onPostExecute(Ljava/lang/Object;)V

    .line 3112
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3115
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->c:Lcom/nut/blehunter/ui/b/a/h;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/h;->dismissAllowingStateLoss()V

    .line 3116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3117
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    iput-object p1, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    .line 3118
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/dfu/f;->e:I

    iget-object v2, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/m;->a(ILcom/nut/blehunter/entity/i;)V

    .line 3119
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/dfu/f;->d:Lcom/nut/blehunter/ui/b/a/d;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)V

    :cond_0
    :goto_0
    return-void

    .line 3121
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/nut/blehunter/dfu/f;->d:Lcom/nut/blehunter/ui/b/a/d;

    .line 4056
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, v0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 4057
    const v3, 0x7f0600e2

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f0600b0

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f060091

    invoke-virtual {v2, v3, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v1

    const-string v2, "download_failed"

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/nut/blehunter/dfu/g;->onPreExecute()V

    .line 91
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/nut/blehunter/dfu/f;->c:Lcom/nut/blehunter/ui/b/a/h;

    const-string v2, "download_progress"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 66
    check-cast p1, [Ljava/lang/Integer;

    .line 2101
    invoke-super {p0, p1}, Lcom/nut/blehunter/dfu/g;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2102
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2105
    const-string v0, "download firmware %s progress is %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/dfu/f;->b:Lcom/nut/blehunter/entity/i;

    iget-object v2, v2, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    aput-object v2, v1, v6

    aget-object v2, p1, v6

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2106
    iget-object v0, p0, Lcom/nut/blehunter/dfu/f;->c:Lcom/nut/blehunter/ui/b/a/h;

    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3051
    iget-object v2, v0, Lcom/nut/blehunter/ui/b/a/h;->a:Landroid/widget/TextView;

    const v3, 0x7f0600b1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/nut/blehunter/ui/b/a/h;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method

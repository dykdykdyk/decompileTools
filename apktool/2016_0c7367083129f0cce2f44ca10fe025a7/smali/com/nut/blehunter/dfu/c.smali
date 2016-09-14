.class final Lcom/nut/blehunter/dfu/c;
.super Ljava/lang/Object;
.source "DfuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/dfu/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/dfu/b;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->d(Lcom/nut/blehunter/dfu/DfuActivity;)Z

    .line 130
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 131
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v1, v1, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v1}, Lcom/nut/blehunter/dfu/DfuActivity;->e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 132
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->f(Lcom/nut/blehunter/dfu/DfuActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->f(Lcom/nut/blehunter/dfu/DfuActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v1, v1, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v1}, Lcom/nut/blehunter/dfu/DfuActivity;->e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    iget-object v2, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v2, v2, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v2}, Lcom/nut/blehunter/dfu/DfuActivity;->e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v3, v3, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v3}, Lcom/nut/blehunter/dfu/DfuActivity;->g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;

    move-result-object v3

    iget-object v3, v3, Lcom/nut/blehunter/entity/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/provider/l;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;

    move-result-object v0

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v1, v1, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v1}, Lcom/nut/blehunter/dfu/DfuActivity;->g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v1, v1, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v1}, Lcom/nut/blehunter/dfu/DfuActivity;->e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    iget-object v2, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v2, v2, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v2}, Lcom/nut/blehunter/dfu/DfuActivity;->g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/m;->a(ILcom/nut/blehunter/entity/i;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->h(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->i(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->j(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->k(Lcom/nut/blehunter/dfu/DfuActivity;)V

    .line 156
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->l(Lcom/nut/blehunter/dfu/DfuActivity;)V

    .line 157
    iget-object v0, p0, Lcom/nut/blehunter/dfu/c;->a:Lcom/nut/blehunter/dfu/b;

    iget-object v0, v0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    const-string v1, "dfu_workflow_succeeded"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

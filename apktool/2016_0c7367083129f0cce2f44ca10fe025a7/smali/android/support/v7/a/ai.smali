.class final Landroid/support/v7/a/ai;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ah;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    invoke-static {v0}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;I)V

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    invoke-static {v0}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/ah;I)V

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    invoke-static {v0}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/ah;)Z

    .line 135
    iget-object v0, p0, Landroid/support/v7/a/ai;->a:Landroid/support/v7/a/ah;

    invoke-static {v0}, Landroid/support/v7/a/ah;->c(Landroid/support/v7/a/ah;)I

    .line 136
    return-void
.end method

.class final Lcom/nut/blehunter/ui/cc;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/b;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ca;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ca;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/nut/blehunter/ui/cc;->a:Lcom/nut/blehunter/ui/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 757
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/cc;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->e(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/nut/blehunter/ui/cc;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_0
    return-void
.end method

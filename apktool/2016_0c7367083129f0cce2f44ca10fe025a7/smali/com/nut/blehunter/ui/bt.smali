.class final Lcom/nut/blehunter/ui/bt;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/t;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/nut/blehunter/ui/bt;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ui/bt;->a:Lcom/nut/blehunter/ui/LoginActivity;

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f02022f

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 170
    return-void
.end method

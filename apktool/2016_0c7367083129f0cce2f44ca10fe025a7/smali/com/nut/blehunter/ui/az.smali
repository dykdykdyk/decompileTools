.class final Lcom/nut/blehunter/ui/az;
.super Ljava/lang/Object;
.source "GuidePagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/GuidePagerActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/GuidePagerActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nut/blehunter/ui/az;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/az;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    .line 1120
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/GuidePagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1121
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/GuidePagerActivity;->finish()V

    .line 106
    return-void
.end method

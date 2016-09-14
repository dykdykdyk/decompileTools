.class final Lcom/nut/blehunter/ui/dh;
.super Ljava/lang/Object;
.source "MeEditActivity.java"

# interfaces
.implements Lcom/nut/blehunter/c/a;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MeEditActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MeEditActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/nut/blehunter/ui/dh;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nut/blehunter/ui/dh;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/MeEditActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/dh;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    const v1, 0x7f060051

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nut/blehunter/ui/dh;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/MeEditActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/dh;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/MeEditActivity;->a(Lcom/nut/blehunter/ui/MeEditActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

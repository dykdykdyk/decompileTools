.class final Lcom/nut/blehunter/ui/bo;
.super Ljava/lang/Object;
.source "LocationRecordActivity.java"

# interfaces
.implements Lcom/nut/blehunter/b/e;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/LocationRecordActivity;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/LocationRecordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/nut/blehunter/ui/bo;->b:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p2, p0, Lcom/nut/blehunter/ui/bo;->a:Ljava/lang/String;

    .line 442
    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/b/a;I)V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/nut/blehunter/ui/bo;->b:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/bo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nut/blehunter/ui/bo;->b:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->d(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/nut/blehunter/ui/bo;->b:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->e(Lcom/nut/blehunter/ui/LocationRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/nut/blehunter/ui/bo;->b:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->e(Lcom/nut/blehunter/ui/LocationRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nut/blehunter/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

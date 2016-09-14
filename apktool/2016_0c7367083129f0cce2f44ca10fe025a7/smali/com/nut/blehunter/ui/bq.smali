.class final Lcom/nut/blehunter/ui/bq;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/a/a/f;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LogActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LogActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    const-string v1, "location_update_record"

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/LogActivity;->a(Lcom/nut/blehunter/ui/LogActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LogActivity;->a(Lcom/nut/blehunter/ui/LogActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/LogActivity;->b(Lcom/nut/blehunter/ui/LogActivity;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LogActivity;->a(Lcom/nut/blehunter/ui/LogActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/LogActivity;->b(Lcom/nut/blehunter/ui/LogActivity;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LogActivity;->c(Lcom/nut/blehunter/ui/LogActivity;)Lcom/nut/blehunter/ui/a/a/a;

    move-result-object v0

    .line 7102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/bq;->a:Lcom/nut/blehunter/ui/LogActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LogActivity;->a(Lcom/nut/blehunter/ui/LogActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

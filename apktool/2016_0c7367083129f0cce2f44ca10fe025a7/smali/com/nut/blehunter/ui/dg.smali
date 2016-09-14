.class final Lcom/nut/blehunter/ui/dg;
.super Ljava/lang/Object;
.source "MeEditActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/User;

.field final synthetic b:Lcom/nut/blehunter/ui/MeEditActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MeEditActivity;Lcom/nut/blehunter/entity/User;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nut/blehunter/ui/dg;->b:Lcom/nut/blehunter/ui/MeEditActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/dg;->a:Lcom/nut/blehunter/entity/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/nut/blehunter/ui/dg;->a:Lcom/nut/blehunter/entity/User;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/nut/blehunter/entity/User;->r:I

    .line 107
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/dg;->a:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 108
    iget-object v0, p0, Lcom/nut/blehunter/ui/dg;->b:Lcom/nut/blehunter/ui/MeEditActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dg;->a:Lcom/nut/blehunter/entity/User;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/MeEditActivity;->a(Lcom/nut/blehunter/ui/MeEditActivity;Lcom/nut/blehunter/entity/User;)V

    .line 109
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

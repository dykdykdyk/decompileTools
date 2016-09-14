.class final Lcom/nut/blehunter/ui/ae;
.super Ljava/lang/Object;
.source "DialogBoxForPushActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/CommonPushMsg;

.field final synthetic b:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;Lcom/nut/blehunter/entity/CommonPushMsg;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/nut/blehunter/ui/ae;->b:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ae;->a:Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nut/blehunter/ui/ae;->b:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ae;->a:Lcom/nut/blehunter/entity/CommonPushMsg;

    iget-object v1, v1, Lcom/nut/blehunter/entity/CommonPushMsg;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->a(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;Ljava/lang/String;)V

    .line 284
    return-void
.end method

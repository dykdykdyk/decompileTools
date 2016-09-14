.class final Lcom/nut/blehunter/push/b;
.super Lcom/nut/blehunter/rxApi/j;
.source "PushMsgUtils.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nut/blehunter/push/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nut/blehunter/push/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nut/blehunter/push/b;->a:Landroid/content/Context;

    const-string v1, "push_channel_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nut/blehunter/push/b;->a:Landroid/content/Context;

    const-string v1, "push_channel_id"

    iget-object v2, p0, Lcom/nut/blehunter/push/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

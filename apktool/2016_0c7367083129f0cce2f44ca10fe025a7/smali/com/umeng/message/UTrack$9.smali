.class Lcom/umeng/message/UTrack$9;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/umeng/message/UTrack$9;->c:Lcom/umeng/message/UTrack;

    iput-object p2, p0, Lcom/umeng/message/UTrack$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/UTrack$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/umeng/message/UTrack$9;->c:Lcom/umeng/message/UTrack;

    iget-object v1, p0, Lcom/umeng/message/UTrack$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/UTrack$9;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/UTrack;->addAlias(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 569
    return-void
.end method

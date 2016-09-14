.class final Lcom/loc/av;
.super Ljava/lang/Thread;
.source "APSServiceCore.java"


# instance fields
.field final synthetic a:Lcom/loc/as;


# direct methods
.method constructor <init>(Lcom/loc/as;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/av;->a:Lcom/loc/as;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->q(Lcom/loc/as;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->r(Lcom/loc/as;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    iget-boolean v0, v0, Lcom/loc/as;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/as;->u:Z

    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/loc/as;->t:Ljava/net/ServerSocket;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    iget-boolean v0, v0, Lcom/loc/as;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    iget-object v1, p0, Lcom/loc/av;->a:Lcom/loc/as;

    iget-object v1, v1, Lcom/loc/as;->t:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/as;->v:Ljava/net/Socket;

    iget-object v0, p0, Lcom/loc/av;->a:Lcom/loc/as;

    iget-object v1, p0, Lcom/loc/av;->a:Lcom/loc/as;

    iget-object v1, v1, Lcom/loc/as;->v:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/loc/as;->a(Lcom/loc/as;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method

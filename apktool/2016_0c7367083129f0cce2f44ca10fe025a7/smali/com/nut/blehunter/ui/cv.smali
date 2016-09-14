.class final Lcom/nut/blehunter/ui/cv;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Lcom/nut/blehunter/b/e;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field final synthetic c:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/nut/blehunter/ui/cv;->a:Ljava/lang/String;

    .line 190
    iput-wide p3, p0, Lcom/nut/blehunter/ui/cv;->b:J

    .line 191
    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/b/a;I)V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/Main2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/cv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v0

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nut/blehunter/ui/cv;->b:J

    iget-object v2, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    if-nez p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/nut/blehunter/ui/cv;->c:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nut/blehunter/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class final Lcom/nut/blehunter/service/n;
.super Lcom/nut/blehunter/dfu/g;
.source "NutTrackerService.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/i;

.field final synthetic b:I

.field final synthetic c:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/i;I)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/nut/blehunter/service/n;->c:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/n;->a:Lcom/nut/blehunter/entity/i;

    iput p3, p0, Lcom/nut/blehunter/service/n;->b:I

    invoke-direct {p0}, Lcom/nut/blehunter/dfu/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1544
    check-cast p1, Ljava/lang/String;

    .line 2548
    invoke-super {p0, p1}, Lcom/nut/blehunter/dfu/g;->onPostExecute(Ljava/lang/Object;)V

    .line 2549
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/nut/blehunter/service/n;->a:Lcom/nut/blehunter/entity/i;

    iput-object p1, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    .line 2551
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/service/n;->b:I

    iget-object v2, p0, Lcom/nut/blehunter/service/n;->a:Lcom/nut/blehunter/entity/i;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/m;->a(ILcom/nut/blehunter/entity/i;)V

    .line 1544
    :cond_0
    return-void
.end method

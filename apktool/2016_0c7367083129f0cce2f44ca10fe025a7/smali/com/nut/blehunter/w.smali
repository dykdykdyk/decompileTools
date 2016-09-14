.class final Lcom/nut/blehunter/w;
.super Ljava/lang/Object;
.source "NutLocationManager.java"

# interfaces
.implements Lcom/nut/blehunter/b/e;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/u;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/nut/blehunter/w;->b:Lcom/nut/blehunter/u;

    iput-object p2, p0, Lcom/nut/blehunter/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/b/a;I)V
    .locals 3

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/nut/blehunter/w;->b:Lcom/nut/blehunter/u;

    iget-object v1, p0, Lcom/nut/blehunter/w;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nut/blehunter/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/u;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

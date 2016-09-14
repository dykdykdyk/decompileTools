.class final Lcom/umeng/analytics/ad;
.super Lorg/json/JSONObject;
.source "StoreHelper.java"


# instance fields
.field final synthetic a:Lu/aly/z;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/umeng/analytics/aa;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/aa;Lu/aly/z;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 457
    iput-object p1, p0, Lcom/umeng/analytics/ad;->c:Lcom/umeng/analytics/aa;

    iput-object p2, p0, Lcom/umeng/analytics/ad;->a:Lu/aly/z;

    iput-object p3, p0, Lcom/umeng/analytics/ad;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 459
    iget-object v0, p0, Lcom/umeng/analytics/ad;->a:Lu/aly/z;

    iget-object v1, p0, Lcom/umeng/analytics/ad;->b:Ljava/lang/StringBuilder;

    invoke-static {v0, p0, v1}, Lcom/umeng/analytics/aa;->b(Lu/aly/z;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V

    .line 460
    return-void
.end method

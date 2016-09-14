.class final Lu/aly/eo;
.super Lu/aly/ef;
.source "UMCCAggregatedManager.java"


# instance fields
.field final synthetic a:Lu/aly/ej;


# direct methods
.method constructor <init>(Lu/aly/ej;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lu/aly/eo;->a:Lu/aly/ej;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 444
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lu/aly/eo;->a:Lu/aly/ej;

    .line 1038
    iget-object v0, v0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 1186
    iget-object v0, v0, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 447
    :cond_0
    return-void
.end method

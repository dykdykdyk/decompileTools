.class final Lu/aly/el;
.super Lu/aly/ef;
.source "UMCCAggregatedManager.java"


# instance fields
.field final synthetic a:Lu/aly/ej;


# direct methods
.method constructor <init>(Lu/aly/ej;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lu/aly/el;->a:Lu/aly/ej;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 344
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lu/aly/el;->a:Lu/aly/ej;

    .line 1038
    iget-object v0, v0, Lu/aly/ej;->b:Lu/aly/fa;

    .line 345
    invoke-virtual {v0}, Lu/aly/fa;->a()V

    .line 347
    :cond_0
    return-void
.end method

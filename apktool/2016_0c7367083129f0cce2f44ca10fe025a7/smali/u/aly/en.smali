.class final Lu/aly/en;
.super Lu/aly/ef;
.source "UMCCAggregatedManager.java"


# instance fields
.field final synthetic a:Lu/aly/ej;


# direct methods
.method constructor <init>(Lu/aly/ej;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lu/aly/en;->a:Lu/aly/ej;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 426
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 428
    return-void
.end method

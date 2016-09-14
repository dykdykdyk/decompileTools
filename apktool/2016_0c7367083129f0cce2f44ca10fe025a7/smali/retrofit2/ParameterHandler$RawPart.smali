.class final Lretrofit2/ParameterHandler$RawPart;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/ParameterHandler",
        "<",
        "Lokhttp3/al;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lretrofit2/ParameterHandler$RawPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lretrofit2/ParameterHandler$RawPart;

    invoke-direct {v0}, Lretrofit2/ParameterHandler$RawPart;-><init>()V

    sput-object v0, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 241
    return-void
.end method


# virtual methods
.method final bridge synthetic apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    check-cast p2, Lokhttp3/al;

    invoke-virtual {p0, p1, p2}, Lretrofit2/ParameterHandler$RawPart;->apply(Lretrofit2/RequestBuilder;Lokhttp3/al;)V

    return-void
.end method

.method final apply(Lretrofit2/RequestBuilder;Lokhttp3/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p1, p2}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/al;)V

    .line 247
    :cond_0
    return-void
.end method

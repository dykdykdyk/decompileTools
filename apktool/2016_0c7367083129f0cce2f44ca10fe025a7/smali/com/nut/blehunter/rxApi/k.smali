.class public final Lcom/nut/blehunter/rxApi/k;
.super Lretrofit2/Converter$Factory;
.source "ToStringConverterFactory.java"


# static fields
.field private static final a:Lokhttp3/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "text/plain"

    invoke-static {v0}, Lokhttp3/ai;->a(Ljava/lang/String;)Lokhttp3/ai;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/rxApi/k;->a:Lokhttp3/ai;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method static synthetic a()Lokhttp3/ai;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/nut/blehunter/rxApi/k;->a:Lokhttp3/ai;

    return-object v0
.end method


# virtual methods
.method public final requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/au;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/nut/blehunter/rxApi/l;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/rxApi/l;-><init>(Lcom/nut/blehunter/rxApi/k;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ba;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/nut/blehunter/rxApi/m;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/rxApi/m;-><init>(Lcom/nut/blehunter/rxApi/k;)V

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

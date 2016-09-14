.class final Lcom/nut/blehunter/rxApi/l;
.super Ljava/lang/Object;
.source "ToStringConverterFactory.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Ljava/lang/String;",
        "Lokhttp3/au;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/rxApi/k;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/rxApi/k;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/l;->a:Lcom/nut/blehunter/rxApi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    .line 1026
    invoke-static {}, Lcom/nut/blehunter/rxApi/k;->a()Lokhttp3/ai;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/au;->create(Lokhttp3/ai;Ljava/lang/String;)Lokhttp3/au;

    move-result-object v0

    .line 23
    return-object v0
.end method

.class final Lcom/nut/blehunter/rxApi/m;
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
        "Lokhttp3/ba;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/rxApi/k;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/rxApi/k;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/m;->a:Lcom/nut/blehunter/rxApi/k;

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
    .line 36
    check-cast p1, Lokhttp3/ba;

    .line 1039
    invoke-virtual {p1}, Lokhttp3/ba;->string()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method

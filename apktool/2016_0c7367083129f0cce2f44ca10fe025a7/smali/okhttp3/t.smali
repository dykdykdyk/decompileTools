.class public interface abstract Lokhttp3/t;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lokhttp3/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lokhttp3/u;

    invoke-direct {v0}, Lokhttp3/u;-><init>()V

    sput-object v0, Lokhttp3/t;->a:Lokhttp3/t;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/s;",
            ">;"
        }
    .end annotation
.end method

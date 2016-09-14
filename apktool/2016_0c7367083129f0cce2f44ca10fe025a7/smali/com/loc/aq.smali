.class public Lcom/loc/aq;
.super Ljava/lang/Object;
.source "DynamicSDKFile.java"


# annotations
.annotation runtime Lcom/loc/p;
    a = "file"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "fname"
        b = 0x6
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "md"
        b = 0x6
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "version"
        b = 0x6
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "dversion"
        b = 0x6
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "status"
        b = 0x6
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "sname"
        b = 0x6
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/loc/ar;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v0, p1, Lcom/loc/ar;->a:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 2000
    iget-object v0, p1, Lcom/loc/ar;->b:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/aq;->b:Ljava/lang/String;

    .line 3000
    iget-object v0, p1, Lcom/loc/ar;->c:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/aq;->f:Ljava/lang/String;

    .line 4000
    iget-object v0, p1, Lcom/loc/ar;->d:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/aq;->c:Ljava/lang/String;

    .line 5000
    iget-object v0, p1, Lcom/loc/ar;->e:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 6000
    iget-object v0, p1, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/aq;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sname"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/o;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sname"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dversion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/o;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fname"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sname"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dversion"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/o;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fname"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/o;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sname"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/o;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

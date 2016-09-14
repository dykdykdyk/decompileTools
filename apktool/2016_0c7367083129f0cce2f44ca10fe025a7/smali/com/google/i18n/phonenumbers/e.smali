.class final Lcom/google/i18n/phonenumbers/e;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/d;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/i18n/phonenumbers/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/i18n/phonenumbers/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/i18n/phonenumbers/b;)V
    .locals 1

    .prologue
    .line 66
    const-string v0, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/e;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/b;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/b;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/e;->d:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/e;->e:Lcom/google/i18n/phonenumbers/b;

    .line 61
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/b;)Lcom/google/i18n/phonenumbers/a/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TT;",
            "Lcom/google/i18n/phonenumbers/a/c;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/b;",
            ")",
            "Lcom/google/i18n/phonenumbers/a/c;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-interface {p3, v0}, Lcom/google/i18n/phonenumbers/b;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 114
    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "missing metadata: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/c;->a(Ljava/io/InputStream;)Lcom/google/i18n/phonenumbers/a/d;

    move-result-object v1

    .line 121
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/a/d;->a:[Lcom/google/i18n/phonenumbers/a/c;

    .line 122
    array-length v2, v1

    if-nez v2, :cond_3

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "empty metadata: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_3
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 127
    sget-object v2, Lcom/google/i18n/phonenumbers/e;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "invalid metadata (too many entries): "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 129
    :cond_4
    const/4 v0, 0x0

    aget-object v1, v1, v0

    .line 130
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/a/c;

    .line 131
    if-eqz v0, :cond_6

    :goto_3
    return-object v0

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 131
    goto :goto_3
.end method


# virtual methods
.method public final a(I)Lcom/google/i18n/phonenumbers/a/c;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/a/c;

    .line 79
    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-object v0

    .line 1093
    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1095
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    const-string v3, "001"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 82
    :goto_1
    if-eqz v0, :cond_2

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/e;->e:Lcom/google/i18n/phonenumbers/b;

    invoke-static {v0, v1, v2, v3}, Lcom/google/i18n/phonenumbers/e;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/b;)Lcom/google/i18n/phonenumbers/a/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1095
    goto :goto_1

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/a/c;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/a/c;

    .line 72
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/e;->e:Lcom/google/i18n/phonenumbers/b;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/e;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/b;)Lcom/google/i18n/phonenumbers/a/c;

    move-result-object v0

    goto :goto_0
.end method

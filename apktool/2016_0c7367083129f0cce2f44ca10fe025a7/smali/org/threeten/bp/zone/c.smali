.class public final Lorg/threeten/bp/zone/c;
.super Lorg/threeten/bp/zone/k;
.source "TzdbZoneRulesProvider.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/threeten/bp/zone/k;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->a:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->c:Ljava/util/Set;

    .line 87
    const-class v0, Lorg/threeten/bp/zone/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/c;->a(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v1, "No time-zone rules found for \'TZDB\'"

    invoke-direct {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/threeten/bp/zone/k;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->a:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->c:Ljava/util/Set;

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/c;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v2, "Unable to load TZDB time-zone rules"

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 211
    .line 1232
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1233
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1234
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "File format not recognised"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1238
    const-string v3, "TZDB"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1239
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "File format not recognised"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 1243
    new-array v6, v5, [Ljava/lang/String;

    move v1, v0

    .line 1244
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1245
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 1249
    new-array v7, v3, [Ljava/lang/String;

    move v1, v0

    .line 1250
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1251
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1253
    :cond_3
    iget-object v1, p0, Lorg/threeten/bp/zone/c;->a:Ljava/util/Set;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1255
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 1256
    new-array v8, v3, [Ljava/lang/Object;

    move v1, v0

    .line 1257
    :goto_2
    if-ge v1, v3, :cond_4

    .line 1258
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    new-array v9, v9, [B

    .line 1259
    invoke-virtual {v4, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1260
    aput-object v9, v8, v1

    .line 1257
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1262
    :cond_4
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    .line 1264
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(I)V

    move v3, v0

    .line 1265
    :goto_3
    if-ge v3, v5, :cond_6

    .line 1266
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    .line 1267
    new-array v11, v10, [Ljava/lang/String;

    .line 1268
    new-array v12, v10, [S

    move v1, v0

    .line 1269
    :goto_4
    if-ge v1, v10, :cond_5

    .line 1270
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    aget-object v13, v7, v13

    aput-object v13, v11, v1

    .line 1271
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    aput-short v13, v12, v1

    .line 1269
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1273
    :cond_5
    new-instance v1, Lorg/threeten/bp/zone/d;

    aget-object v10, v6, v3

    invoke-direct {v1, v10, v11, v12, v9}, Lorg/threeten/bp/zone/d;-><init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 213
    :cond_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/d;

    .line 216
    iget-object v1, p0, Lorg/threeten/bp/zone/c;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1287
    iget-object v4, v0, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    .line 216
    invoke-interface {v1, v4, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/zone/d;

    .line 217
    if-eqz v1, :cond_7

    .line 2287
    iget-object v1, v1, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    .line 3287
    iget-object v4, v0, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 218
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data already loaded for TZDB time-zone rules version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4287
    iget-object v0, v0, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v0, v2

    .line 221
    goto :goto_5

    .line 222
    :cond_8
    return v0
.end method

.method private a(Ljava/lang/ClassLoader;)Z
    .locals 6

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    const/4 v1, 0x0

    .line 168
    :try_start_0
    const-string v2, "org/threeten/bp/TZDB.dat"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    move v2, v0

    .line 169
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/c;->a(Ljava/net/URL;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    or-int/2addr v1, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :goto_1
    new-instance v2, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load TZDB time-zone rules: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 176
    :cond_0
    return v2

    .line 173
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private a(Ljava/net/URL;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Lorg/threeten/bp/zone/ZoneRulesException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lorg/threeten/bp/zone/c;->c:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 194
    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/c;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 196
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_0
    return v0

    .line 196
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/threeten/bp/zone/c;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Lorg/threeten/bp/zone/i;
    .locals 3

    .prologue
    .line 136
    const-string v0, "zoneId"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lorg/threeten/bp/zone/c;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/d;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/d;->a(Ljava/lang/String;)Lorg/threeten/bp/zone/i;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown time-zone ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "TZDB"

    return-object v0
.end method

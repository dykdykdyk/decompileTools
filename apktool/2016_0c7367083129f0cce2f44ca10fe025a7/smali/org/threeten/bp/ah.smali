.class final Lorg/threeten/bp/ah;
.super Lorg/threeten/bp/ad;
.source "ZoneRegion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Ljava/lang/String;

.field private final transient e:Lorg/threeten/bp/zone/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "[A-Za-z][A-Za-z0-9~/._+-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ah;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/threeten/bp/zone/i;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/threeten/bp/ad;-><init>()V

    .line 163
    iput-object p1, p0, Lorg/threeten/bp/ah;->d:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lorg/threeten/bp/ah;->e:Lorg/threeten/bp/zone/i;

    .line 165
    return-void
.end method

.method static b(Ljava/lang/String;)Lorg/threeten/bp/ah;
    .locals 3

    .prologue
    .line 136
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/threeten/bp/ah;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/zone/k;->b(Ljava/lang/String;)Lorg/threeten/bp/zone/i;
    :try_end_0
    .catch Lorg/threeten/bp/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    new-instance v1, Lorg/threeten/bp/ah;

    invoke-direct {v1, p0, v0}, Lorg/threeten/bp/ah;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/i;)V

    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "GMT0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    sget-object v0, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-virtual {v0}, Lorg/threeten/bp/af;->c()Lorg/threeten/bp/zone/i;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/threeten/bp/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/threeten/bp/zone/i;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/threeten/bp/ah;->e:Lorg/threeten/bp/zone/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ah;->e:Lorg/threeten/bp/zone/i;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ah;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/threeten/bp/zone/k;->b(Ljava/lang/String;)Lorg/threeten/bp/zone/i;

    move-result-object v0

    goto :goto_0
.end method

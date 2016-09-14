.class final Lorg/threeten/bp/format/z;
.super Lorg/threeten/bp/b/b;
.source "DateTimePrintContext.java"


# instance fields
.field final synthetic a:Lorg/threeten/bp/a/a;

.field final synthetic b:Lorg/threeten/bp/temporal/l;

.field final synthetic c:Lorg/threeten/bp/a/m;

.field final synthetic d:Lorg/threeten/bp/ad;


# direct methods
.method constructor <init>(Lorg/threeten/bp/a/a;Lorg/threeten/bp/temporal/l;Lorg/threeten/bp/a/m;Lorg/threeten/bp/ad;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    iput-object p2, p0, Lorg/threeten/bp/format/z;->b:Lorg/threeten/bp/temporal/l;

    iput-object p3, p0, Lorg/threeten/bp/format/z;->c:Lorg/threeten/bp/a/m;

    iput-object p4, p0, Lorg/threeten/bp/format/z;->d:Lorg/threeten/bp/ad;

    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/z",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/threeten/bp/format/z;->c:Lorg/threeten/bp/a/m;

    .line 195
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/threeten/bp/format/z;->d:Lorg/threeten/bp/ad;

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 193
    iget-object v0, p0, Lorg/threeten/bp/format/z;->b:Lorg/threeten/bp/temporal/l;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/z;->b:Lorg/threeten/bp/temporal/l;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/z;->b:Lorg/threeten/bp/temporal/l;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/l;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/threeten/bp/format/z;->a:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 181
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/z;->b:Lorg/threeten/bp/temporal/l;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    goto :goto_0
.end method

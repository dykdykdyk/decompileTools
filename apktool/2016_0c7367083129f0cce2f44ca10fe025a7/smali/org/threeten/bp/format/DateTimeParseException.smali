.class public Lorg/threeten/bp/format/DateTimeParseException;
.super Lorg/threeten/bp/DateTimeException;
.source "DateTimeParseException.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->a:Ljava/lang/String;

    .line 70
    iput p3, p0, Lorg/threeten/bp/format/DateTimeParseException;->b:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p3}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->a:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->b:I

    .line 85
    return-void
.end method

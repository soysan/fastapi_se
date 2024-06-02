from datetime import datetime

from sqlalchemy import Column, DateTime, String

from models.base_class import Base


class Card(Base):
    __tablename__ = "cards"
    id = Column(String, primary_key=True, index=True)
    title = Column(String, index=True)
    description = Column(String)
    # 3.12 <= utcnow -> datetime.timezone.utc
    created_at = Column(DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    updated_at = Column(DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

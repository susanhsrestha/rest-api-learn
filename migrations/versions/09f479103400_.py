"""empty message

Revision ID: 09f479103400
Revises: abd6ecb2653f
Create Date: 2023-07-21 23:15:26.472682

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '09f479103400'
down_revision = 'abd6ecb2653f'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('items', schema=None) as batch_op:
        batch_op.add_column(sa.Column('description', sa.String(length=100), nullable=True))

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('items', schema=None) as batch_op:
        batch_op.drop_column('description')

    # ### end Alembic commands ###

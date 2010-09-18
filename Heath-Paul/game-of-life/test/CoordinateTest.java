import java.util.Arrays;
import java.util.HashSet;

import junit.framework.Assert;

import org.junit.Test;

public class CoordinateTest {
	@Test
	public void equalCellsHaveEqualXsAndYs() {
		Coordinate coordinate1 = new Coordinate(1, 2);
		Coordinate coordinate2 = new Coordinate(1, 2);

		Assert.assertEquals(coordinate1, coordinate2);
	}

	@Test
	public void unequalCellsHaveUnequalXs() {
		Coordinate coordinate1 = new Coordinate(1, 2);
		Coordinate coordinate2 = new Coordinate(4, 2);

		Assert.assertFalse(coordinate1.equals(coordinate2));
	}

	@Test
	public void unequalCellsHaveUnequalYs() {
		Coordinate coordinate1 = new Coordinate(1, 2);
		Coordinate coordinate2 = new Coordinate(1, 4);

		Assert.assertFalse(coordinate1.equals(coordinate2));
	}

	@Test
	public void equalCellsHaveEqualHashCodes() {
		Coordinate coordinate1 = new Coordinate(1, 2);
		Coordinate coordinate2 = new Coordinate(1, 2);

		Assert.assertEquals(coordinate1.hashCode(), coordinate2.hashCode());
	}

	@Test
	public void getNeighborCoordinatesReturnsEightNeighboringCoordinates() {
		Coordinate testObject = new Coordinate(10, 20);

		Assert.assertEquals(
				new HashSet<Coordinate>(Arrays.asList(new Coordinate(10, 19),
						new Coordinate(10, 21), new Coordinate(11, 19),
						new Coordinate(11, 21), new Coordinate(9, 20),
						new Coordinate(11, 20), new Coordinate(9, 21),
						new Coordinate(9, 19))), testObject
						.getNeighborCoordinates());
	}
}
